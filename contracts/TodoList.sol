//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.3;

contract TodoList {
  uint public taskCount = 0;

  //Defining structure
  struct Task {
    uint id;
    string content;
    bool completed;
  }

   // Creating a mapping
  mapping(uint => Task) public tasks;

  
  event TaskCreated(
    uint id,
    string content,
    bool completed
  );  
  
  constructor()  {
    createTask("Review the content in Readme.md");
  }

  function createTask(string memory _content) public {
    taskCount ++;

    //⤵️ tasks is referencing the mapping
    tasks[taskCount] = Task(taskCount, _content, false);
    emit TaskCreated(taskCount, _content, false);
  }

}
