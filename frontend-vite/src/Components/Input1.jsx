import React, { useState } from "react";
import "../App.css";

const Input1 = () => {

  const letternumber = {
    a: "1",
  };

  const [inputtest, setinputtest] = useState("");

  const aaa = inputtest.split('')
//   console.log(aaa)
//   console.log(inputtest)


  return (
    <div>
      <input
        type="text"
        value={inputtest}
        onChange={(e) => setinputtest(e.target.value)}
      ></input>
      <br></br>
      {inputtest.split("")}
      <br></br>
      {aaa}
    </div>
  );
};

export default Input1;
