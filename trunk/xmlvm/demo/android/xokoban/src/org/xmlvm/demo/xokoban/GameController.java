package org.xmlvm.demo.xokoban;

import java.util.ArrayList;
import java.util.List;

import android.app.AlertDialog;
import android.content.DialogInterface;

/**
 * The controller class for the Sokoban game.
 */
public class GameController implements MoveFinishedHandler, SimpleTapHandler {
    /** A flag to indicate whether sensor events will be processed or not. */
    private boolean         gamePaused           = true;

    /** The current level. */
    private int             currentLevel         = 0;

    /** Indicates whether the current level has been started. */
    private boolean         levelStarted         = false;

    /** The number of moves. */
    private int             moveCount            = 0;

    /** A representation of the game's man game piece. */
    private Man             man                  = null;

    /** A list of all ball game pieces. */
    private List<GamePiece> balls                = null;

    /** A list of all goal game pieces. */
    private List<GamePiece> goals                = null;

    /** The current game board. */
    private Board           board                = null;

    /** The {@link GameView} associated with this GameController. */
    private GameView        gameView             = null;

    /**
     * Associated {@link InputController} instance that controls this game
     * controller.
     */
    private InputController inputController      = null;
    /** The splash view shown right after the start of the application. */
    private SplashView      splashView;

    /** The info screen contains instructions and settings. */
    private InfoView        infoView;

    /** Whether the SplashView is shown. */
    private boolean         splashViewShown      = true;

    private AlertDialog     currentLevelDialog   = null;

    private AlertDialog     changeLevelDialog    = null;

    private AlertDialog     congratulationDialog = null;

    /**
     * Instantiates a new GameController and connects it to the given
     * {@link GameView}.
     * 
     * @param gameView
     *            The GameView used to display the game.
     * @param splashView
     *            The SplashView that should be used within the game.
     * @param infoView
     *            The InfoView that should be used within the game.
     * @param currentLevel
     *            The current level.
     */
    public GameController(GameView gameView, SplashView splashView, InfoView infoView,
            int currentLevel) {
        this.gameView = gameView;
        this.splashView = splashView;
        this.infoView = infoView;
        this.infoView.setOnCloseHandler(new OnCloseHandler() {
            @Override
            public void onClose() {
                gamePaused = false;
            }
        });
        this.currentLevel = currentLevel;
    }

    /**
     * Set the input controller for this game controller.
     * 
     * @param inputController
     *            The input controller.
     */
    public void setInputController(InputController inputController) {
        this.inputController = inputController;
    }

    /**
     * Returns whether the current level is finished.
     * 
     * @return true if the level is finished, false otherwise.
     */
    public boolean isLevelFinished() {
        for (int i = 0; i < goals.size(); i++) {
            Goal goal = (Goal) goals.get(i);
            if (getBallAtPosition(goal.getX(), goal.getY()) == null) {
                return false;
            }
        }
        return true;
    }

    /**
     * Moves the man in the given direction. If the man "hits" a ball that is
     * movable, it will move it as well.
     * 
     * @param dx
     *            The number of pixels to move horizontally.
     * @param dy
     *            The number of pixels to move vertically.
     */
    public void moveMan(int dx, int dy) {
        if (man == null || man.isMoving()) {
            return;
        }
        int newX = man.getX() + dx;
        int newY = man.getY() + dy;

        // Check wall
        if (board.getBoardPiece(newX, newY) == Board.WALL) {
            return;
        }

        // Check ball and piece behind it
        Ball adjacentBall = getBallAtPosition(newX, newY);
        if (adjacentBall != null
                && (getBallAtPosition(newX + dx, newY + dy) != null || board.getBoardPiece(newX
                        + dx, newY + dy) == Board.WALL)) {
            return;
        }

        // Move man only
        levelStarted = true;
        moveCount++;
        if (adjacentBall == null) {
            man.startMoving(dx, dy);
        }
        // Move man and ball
        else {
            adjacentBall.startMoving(dx, dy);
            man.startMoving(dx, dy);
        }
        return;
    }

    /**
     * Returns the ball at the requested position.
     * 
     * @param x
     *            The x coordinate to check for a ball.
     * @param y
     *            The y coordinate to check for a ball.
     * @return If a {@link Ball} exists at the requested location, it returns
     *         it. Null otherwise.
     */
    private Ball getBallAtPosition(int x, int y) {
        for (int i = 0; i < balls.size(); i++) {
            Ball b = (Ball) balls.get(i);
            if (b.getX() == x && b.getY() == y) {
                return b;
            }
        }

        return null;
    }

    /**
     * Sets the man of the game.
     */
    public void setMan(Man man) {
        this.man = man;
    }

    /**
     * Adds a ball to the game.
     */
    public void addBall(Ball ball) {
        balls.add(ball);
    }

    /**
     * Adds a goal to the game.
     */
    public void addGoal(Goal goal) {
        goals.add(goal);
    }

    public void loadLevel(boolean showLevel) {
        loadLevel(currentLevel, showLevel);
    }

    /**
     * Loads the give level. Before the level is started a Dialog shows the
     * number of the level being started.
     * 
     * @param level
     *            The level to be loaded.
     * @param showLevel
     *            Determines whether the loaded level will be indicated with a
     *            DialogBox
     */
    public void loadLevel(int level, boolean showLevel) {
        // Pause game and store current level
        gamePaused = true;
        currentLevel = level;
        levelStarted = false;

        // Create and display the level's board
        board = new Board(new CharField(Levels.getLevel(level), Board.BOARD_WIDTH,
                Board.BOARD_HEIGHT));
        balls = new ArrayList<GamePiece>();
        goals = new ArrayList<GamePiece>();

        gameView.displayBoard(board);

        // Display current level
        if (showLevel) {
            currentLevelDialog = new AlertDialog.Builder(gameView.getActivity()).setTitle(
                    "Level: " + (currentLevel + 1)).setPositiveButton("OK",
                    new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int whichButton) {
                            gamePaused = false;
                        }
                    }).create();
            currentLevelDialog.show();
        } else {
            gamePaused = false;
        }
    }

    /**
     * Shows a dialog allowing the user to reset the current level or to proceed
     * to the next level.
     */
    public void showLevelDialog() {
        DialogInterface.OnClickListener listener = new DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialog, int which) {
                boolean showLevelDialog = false;
                // First button: Test for previous level and go back to previous
                // level if necessary
                if (which == DialogInterface.BUTTON1 && !levelStarted && currentLevel > 0) {
                    currentLevel--;
                    // showLevelDialog = true;
                }

                // Second button: Increase current level to proceed to next
                // level
                if (which == DialogInterface.BUTTON3) {
                    currentLevel++;
                    // showLevelDialog = true;
                }

                changeLevelDialog.dismiss();

                if (which != DialogInterface.BUTTON2) {
                    loadLevel(currentLevel, showLevelDialog);
                }
            }

        };
        changeLevelDialog = new AlertDialog.Builder(gameView.getActivity()).create();
        changeLevelDialog.setTitle("   Current Level: " + (currentLevel + 1) + "   ");
        if (!levelStarted && currentLevel > 0) {
            changeLevelDialog.setButton("Previous", listener);
        } else {
            changeLevelDialog.setButton("Reset", listener);
        }
        changeLevelDialog.setButton2("Cancel", listener);

        if (currentLevel < Levels.getSize() - 1) {
            changeLevelDialog.setButton3("Next", listener);
        }
        changeLevelDialog.show();
    }

    /**
     * Shows a dialog allowing the user to reset the current level or to proceed
     * to the next level.
     */
    public void showCongratulationDialog() {

        DialogInterface.OnClickListener listener = new DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialog, int which) {
                loadLevel(0, false);
            }

        };

        congratulationDialog = new AlertDialog.Builder(gameView.getActivity()).create();
        congratulationDialog.setTitle("Congratulations! All levels finished. Skipping to level 1.");
        congratulationDialog.setButton("OK", listener);
        congratulationDialog.show();
    }

    /**
     * Shows the splashScreen until the user taps the screen.
     * 
     * @param inputController
     *            The input controller that should be used to hide the view on a
     *            tap.
     * @param loadLevel
     *            Whether the current level should be loaded after the screen is
     *            tapped.
     */
    public void showSplashScreen() {
        gamePaused = true;
        splashView.show();
    }

    /**
     * Shows the {@link InfoView} instance associated with this GameController.
     */
    public void showInfoView() {
        gamePaused = true;
        infoView.show();
    }

    /**
     * Returns the number of moves already made in the current game.
     * 
     * @return The number of moves.
     */
    public int getMoveCount() {
        return moveCount;
    }

    /**
     * Returns the current level.
     */
    public int getCurrentLevel() {
        return currentLevel;
    }

    /**
     * Returns whether the game is paused.
     */
    public boolean isGamePaused() {
        return gamePaused;
    }

    /**
     * Retrieves the tile's size in pixels.
     * 
     * @return The retrieved tile size.
     */
    public int getTileSize() {
        return gameView.getTileSize();
    }

    @Override
    public void onMoveFinished() {
        if (isLevelFinished()) {
            if (inputController != null) {
                // Tell input controller to stop movement
                inputController.stopMovement();
            }
            // More levels left
            if (currentLevel < Levels.getSize() - 1) {
                currentLevel++;
                loadLevel(currentLevel, true);
            }
            // All levels finished: Congratulate and wrap to level 1
            else {
                showCongratulationDialog();
            }
            return;
        }
    }

    /**
     * Should be called, before the object is destroyed.
     */
    public void onDestroy() {
        if (currentLevelDialog != null) {
            currentLevelDialog.dismiss();
            currentLevelDialog = null;
        }

        if (changeLevelDialog != null) {
            changeLevelDialog.dismiss();
            changeLevelDialog = null;
        }

        if (congratulationDialog != null) {
            congratulationDialog.dismiss();
            congratulationDialog = null;
        }
    }

    /**
     * Returns the current GameView instance.
     */
    public GameView getGameView() {
        return gameView;
    }

    @Override
    public void onTap(float x, float y) {
        if (splashView.isViewShown()) {
            splashView.hide();

            Xokoban activity = (Xokoban) gameView.getActivity();
            if (activity.isFirstRun()) {
                showInfoView();
            } else {
                loadLevel(currentLevel, true);
            }
        } else if (!gamePaused) {
            if (gameView.isInsideInfoLogo(x, y)) {
                showInfoView();
            } else if (gameView.isInsideLevelsLogo(x, y)) {
                showLevelDialog();
            }
        }
    }
}