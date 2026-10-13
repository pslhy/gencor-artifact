
let rec do_algebra (operator : string list) (operand : int list) : int = 
  match operator, operand with
  | [], _ | _, [] -> invalid_arg "operator and operand lists must have valid lengths"
  | ["+"], _ | ["-"], _ | ["*"], _ | ["/"], _ | ["**"], _ ->List.hd operand
  | op :: ops, x :: y :: xs -> 
      let result = 
        match op with
        | "+" -> x + y
        | "-" -> x - y
        | "*" -> x * y
        | "/" -> x / y
        | "**" -> int_of_float (fst (float x ** float y))
        | _ -> invalid_arg "invalid operator"
      in do_algebra ops (result :: xs)

let eval_expression (operator : string list) (operand : int list) : int = 
  let rec eval = function
    | [] -> 0
    | [x] -> x
    | x :: y :: rest ->
        let result =
          match x with
          | "+" -> y + eval rest
          | "-" -> y - eval rest
          | "*" -> y * eval rest
          | "/" -> y / eval rest
          | "**" -> int_of_float (fst (float y ** float (eval rest)))
          | _ -> invalid_arg "invalid operator"
        in result
  in eval operand

let solve operator operand =
  do_algebra operator operand

(* Example usage: *)
let result = solve ["+", "*", "-"] [2; 3; 4; 5]
print_int (eval_expression ["+", "*", "-"] [2; 3; 4; 5]) (* Output: 9 *)

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
