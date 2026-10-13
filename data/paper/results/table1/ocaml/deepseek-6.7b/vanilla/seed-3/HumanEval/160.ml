let rec do_algebra (operator : string list) (operand : int list) : int =
  match operator, operand with
  | [], [x] -> x
  | op :: ops, x :: y :: xs ->
      let rest = do_algebra ops (eval_op op x y :: xs) in
      if List.length ops = 0 then rest else eval_op op rest rest
  | _ -> invalid_arg "Invalid inputs"

and eval_op (op : string) (x : int) (y : int) : int =
  match op with
  | "+" -> x + y
  | "-" -> x - y
  | "*" -> x * y
  | "//" -> x / y
  | "**" -> x ** y
  | _ -> invalid_arg "Unknown operator"


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
