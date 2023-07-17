import React from 'react'

const Todo = ({todo,toggleTodo} ) => {
const handleTodoClick = () => {
    toggleTodo(todo.id);
}

  return (
    <div>{todo.name}
    <label>
        <input type="checkbox" checked={todo.completed} readOnly onChange={handleTodoClick}/>
    </label>
    
    </div>
  )
};

export default Todo;