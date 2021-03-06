
package org.xmlvm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.bcel.generic.BranchInstruction;
import org.apache.bcel.generic.GOTO;
import org.apache.bcel.generic.Instruction;
import org.apache.bcel.generic.InstructionHandle;
import org.apache.bcel.generic.InstructionList;

import com.sun.org.apache.bcel.internal.classfile.Attribute;



public class InstructionHandlerManager
{

    private InstructionList                       il;
    private Map<Integer, InstructionHandle>       mapID2InstructionHandle;
    private Map<Integer, List<BranchInstruction>> mapID2BranchInstructions;
    private ArrayList<Integer> currentIds;    


    public InstructionHandlerManager(InstructionList il)
    {
        this.il = il;
        mapID2InstructionHandle = new HashMap<Integer, InstructionHandle>();
        mapID2BranchInstructions = new HashMap<Integer, List<BranchInstruction>>();
        currentIds = new ArrayList<Integer>();
    }



    public void setLabelID(int id)
        throws IllegalXMLVMException
    {
        currentIds.add(id);
    }



    public void registerInstructionHandle(InstructionHandle ih)
    {
        if(currentIds.size() == 0)
        	return;

       	for(Integer currentID: currentIds)
       	{
	        mapID2InstructionHandle.put(currentID, ih);
	        List<BranchInstruction> l = mapID2BranchInstructions.get(currentID);
	        if (l != null) {
	            // We encountered some branch instructions earlier before we
	            // registered this instruction handle
	            for (BranchInstruction bi : l) {
	                bi.setTarget(ih);
	            }
	            mapID2BranchInstructions.remove(currentID);
	        }
	        
       	}
       	currentIds.clear();
        
    }



    public void registerBranchInstruction(BranchInstruction g, int id)
    {
        InstructionHandle ih = mapID2InstructionHandle.get(id);
        if (ih != null) {
            // Instruction handle was registered before
            g.setTarget(ih);
            return;
        }
        // We haven't seen the instruction handle yet. Remember this branch
        // instruction
        List<BranchInstruction> l = mapID2BranchInstructions.get(id);
        if (l == null)
            l = new ArrayList<BranchInstruction>();
        l.add(g);
        mapID2BranchInstructions.put(id, l);
    }



    public void checkConsistency()
    {
        // At the end of processing the byte code of a method,
        // mapID2BranchInstructions
        // should be empty.
        if (mapID2BranchInstructions.size() != 0) {
            System.err.println("Following label IDs could not be resolved: "
                    + mapID2BranchInstructions.keySet());;
            System.exit(-1);
        }
    }
}
