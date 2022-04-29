pragma solidity ^0.8.0;

contract q14{

    enum Lifecycle{Infant, Toddler, Child, TeenAger, Adult, Old}

    function getStage(uint month) public pure returns(Lifecycle){
         if(month > 0 && month <= 12)
            return Lifecycle.Infant;
        else if(month > 12 && month <= 24)
            return Lifecycle.Toddler;
        else if(month > 24 && month <= 155)
            return Lifecycle.Child;
        else if(month > 156 && month <= 228)
            return Lifecycle.TeenAger;
        else if(month > 228 && month <= 720)
            return Lifecycle.Adult;
        else
            return Lifecycle.Old;
    }
}