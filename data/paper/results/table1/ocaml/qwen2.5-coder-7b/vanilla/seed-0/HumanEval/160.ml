let rec do_algebra (operator : string list) (operand : int list) : int = 
  let f op a b = match op with
    | "+" -> a + b
    | "-" -> a - b
    | "*" -> a * b
    | "//" -> a / b
    | "**" -> int_of_float (Float.pow (float a) (float b))
    | _ -> invalid_arg "Invalid operator"
  in
  let rec eval ops ops2 acc = match ops with
    | [] -> acc
    | op :: rest -> eval ops2 rest (f op acc (List.hd ops2))
  in
  eval (List.rev operator) (List.tl (List.rev operand)) (List.hd operand)


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
