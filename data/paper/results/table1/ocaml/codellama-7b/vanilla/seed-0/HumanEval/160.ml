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
