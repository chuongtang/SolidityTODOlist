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

    event TaskCompleted(
    uint id,
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

   function toggleCompleted(uint _id) public {
    Task memory _task = tasks[_id];
    _task.completed = !_task.completed;
    tasks[_id] = _task;
    emit TaskCompleted(_id, _task.completed);
  }
}
