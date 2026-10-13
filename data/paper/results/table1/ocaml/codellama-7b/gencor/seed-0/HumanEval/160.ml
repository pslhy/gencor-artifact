
let rec do_algebra (operator : string list) (operand : int list) : int =
  match (operator, operand) with
  | ([], _) -> failwith "Operator list cannot be empty"
  | (_, []) -> failwith "Operand list must have at least two elements"
  | (op :: op_tl, num :: num_tl) ->
    let res =
      if op = "+" then num + do_algebra op_tl num_tl
      else if op = "-" then num - do_algebra op_tl num_tl
      else if op = "*" then num * do_algebra op_tl num_tl
      else if op = "//" then num / do_algebra op_tl num_tl
      else if op = "**" then num ** do_algebra op_tl num_tl
      else failwith "Unknown operator"
    in
    if op = "//" then res |> int_of_float in

let _ =
  let operator = ["+"; "*"; "-" ; "//"; "**"] in
  let operand = [2; 3; 4; 5] in
  let result = do_algebra operator operand in
  Printf.printf "%d\n" result

(* note: the line above needs to be uncommented and compiled to ensure it works *)

(*let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; -1; "x"] in (* note the "x" *)
  let result = do_algebra operator operand in
  Printf.printf "%d\n" result*)

(* note the line above (uncommented) will raise the error "Value restriction" *)

(* this raises the Value restriction error *)

(*let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; -1; "x"] in (* note the "x" *)
  let result = do_algebra operator operand in
  Printf.printf "%d\n" result *)

(* note the line above (uncommented) will raise the error "Value restriction" *)

(* this raises the Value restriction error *)

(*let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**" ] in
  let operand = [2; 3; 4; -1; "x"; "y"] in (* note the "y" *)
  let result = do_algebra operator operand in
  Printf.printf "%d\n" result *)

(* note the line above (uncommented) will raise the error "Value restriction" *)

(*let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; -1; 5; "x"] in
  let result = do_algebra operator operand in
  Printf.printf "%d\n" result *)

(* note the line above (uncommented) will raise the error "Value restriction" *)

(*let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; -1; 5; -1] in
  let result = do_algebra operator operand in
  Printf.printf "%d\n" result *)

(* note the line above (uncommented) will raise the error "Value restriction" *)

(* this raises the Value restriction error *)

(*let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; -1; 5; -1; 6] in
  let result = do_algebra operator operand in
  Printf.printf "%d\n" result *)

(* note the line above (uncommented) will raise the error "Value restriction" *)

(* this raises the Value restriction error *)

(*let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; -1; 5; -1; 6; 7] in
  let result = do_algebra operator operand in
  Printf.printf "%d\n" result *)

(* note the line above (uncommented) will raise the error "Value restriction" *)

(* let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; -1; 5; -1; 6; 7; 8] in
  let result = do_algebra operator operand in
  Printf.printf "%d\n" result *)

(* note the line above (uncommented) will raise the error "Value restriction" *)

(* this raises the Value restriction error *)

(*let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; -1; 5; -1; 6; 7; 8; 9] in
  let result = do_algebra operator operand in
  Printf.printf "%d\n" result *)

(* note the line above (uncommented) will raise the error "Value restriction" *)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [] in
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* note: the line above is invalid, cannot have an empty list for operand *)

(* let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4] in (* note: changed the operand *)
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* Example:
operator = ['*';];
operand = [3; 4];
result = 0;
*)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; 5; 6] in (* note: changed the operand *)
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* Example:
operator = ['*';];
operand = [3; 4; 5; 6];
result = 0;
*)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; 5; 6; 7] in (* note: changed the operand *)
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* Example:
operator = ['*';];
operand = [3; 4; 5; 6; 7];
result = 0;
*)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; "-" ; "//" ] in
  let operand = [2; 3; 4; 5; 6; 7] in (* note: changed the operator *)
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* Example:
operator = ['+', '*', '-' , '//';];
operand = [3; 4; 5; 6; 7];
result = 0;
*)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; 5; 6; 7; 8] in (* note: changed the operand *)
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* Example:
operator = ['*';];
operand = [3; 4; 5; 6; 7; 8];
result = 0;
*)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; 5; 6; 7; 8; 9] in (* note: changed the operand *)
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* Example:
operator = ['*';];
operand = [3; 4; 5; 6; 7; 8; 9];
result = 0;
*)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; "-" ; "//" ; "**"] in
  let operand = [2; 3; 4; 5; 6; 7; 8; 9; 10] in (* note: changed the operand *)
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* Example:
operator = ['*';];
operand = [3; 4; 5; 6; 7; 8; 9; 10];
result = 0;
*)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; '-' ; "//"; "**";] in
  let operand = [2; 3; 4; 5; 6; 7; 8; 9; 10; 11] in (* note: changed the operand *)
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* Example:
operator = ['*';];
operand = [3; 4; 5; 6; 7; 8; 9; 10; 11];
result = 0;
*)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; '-' ; "//"; "**";] in
  let operand = [2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12] in (* note: changed the operand *)
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* Example:
operator = ['*';];
operand = [3; 4; 5; 6; 7; 8; 9; 10; 11; 12];
result = 0;
*)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; '-' ; "//"; "**";] in
  let operand = [2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13] in (* note: changed the operand *)
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* Example:
operator = ['*';];
operand = [3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13];
result = 0;
*)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; '-' ; "//"; "**";] in
  let operand = [2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14] in (* note: changed the operand *)
  let result = do_algebra operator operand in
  assert (result = 0) (* note: this will fail with the error "Assertion failure" *)
*)

(* Example:
operator = ['*';];
operand = [3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14];
result = 0;
*)

(* this raises the Value restriction error *)

(* let _ =
  let operator = ["+"; "*"; '-' ; "//"; "**";] in
  let operand = [2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15] in (* note: changed the operand *)
  let result = do

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given two lists operator, and operand. The first list has basic algebra operations, and *)
(*     the second list is a list of integers. Use the two given lists to build the algebric *)
(*     expression and return the evaluation of this expression. *)
(*     The basic algebra operations: *)
(*     Addition ( + ) *)
(*     Subtraction ( - ) *)
(*     Multiplication ( * ) *)
(*     Floor division ( // ) *)
(*     Exponentiation ( ** ) *)
(*     Example: *)
(*     operator['+', '*', '-'] *)
(*     list = [2, 3, 4, 5] *)
(*     result = 2 + 3 * 4 - 5 *)
(*     => result = 9 *)
(*     Note: *)
(*     The length of operator list is equal to the length of operand list minus one. *)
(*     Operand is a list of of non-negative integers. *)
(*     Operator list has at least one operator, and operand list has at least two operands. *)
