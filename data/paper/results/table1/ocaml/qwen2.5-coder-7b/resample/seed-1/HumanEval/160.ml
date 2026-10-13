(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
        | "**" -> int_of_float (fst (float x **. float y))
        | _ -> invalid_arg "invalid operator"
      in do_algebra ops (result :: xs)

let eval_expression (operator : string list) (operand : int list) : int = 
  let rec eval = function
    | op :: ops, x :: y :: xs -> 
        let result = 
          match op with
          | "+" -> x + y
          | "-" -> x - y
          | "*" -> x * y
          | "/" -> x / y
          | "**" -> int_of_float (fst (float x **. float y))
          | _ -> invalid_arg "invalid operator"
        in eval (ops, result :: xs)
    | _, _ -> List.hd operand
  in eval (operator, operand)


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:46: Unbound value "( **. )" *)
(*     Hint: Did you mean "**" or "*."? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec do_algebra (operator : string list) (operand : int list) : int = 
  match operator, operand with
  | [], _ | _, [] -> invalid_arg "operator and operand lists must have valid lengths"
  | ["+"], _ | ["-"], _ | ["*"], _ | ["/"], _ | ["**"], _ -> List.hd operand
  | op :: ops, x :: y :: xs -> 
      let result = 
        match op with
        | "+" -> x + y
        | "-" -> x - y
        | "*" -> x * y
        | "/" -> x / y
        | "**" -> int_of_float (fst (float x **. float y))
        | _ -> invalid_arg "invalid operator"
      in do_algebra ops (result :: xs)

let eval_expression (operator : string list) (operand : int list) : int = 
  let rec eval = function
    | op :: ops, x :: y :: xs -> 
        let result = 
          match op with
          | "+" -> x + y
          | "-" -> x - y
          | "*" -> x * y
          | "/" -> x / y
          | "**" -> int_of_float (fst (float x **. float y))
          | _ -> invalid_arg "invalid operator"
        in eval (ops, result :: xs)
    | _, _ -> List.hd operand
  in eval (operator, operand)
``
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:30:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec do_algebra (operator : string list) (operand : int list) : int = 
  match operator, operand with
  | [], _ | _, [] -> invalid_arg "operator and operand lists must have valid lengths"
  | ["+"], _ | ["-"], _ | ["*"], _ | ["/"], _ | ["**"], _ -> List.hd operand
  | op :: ops, x :: y :: xs -> 
      let result = 
        match op with
        | "+" -> x + y
        | "-" -> x - y
        | "*" -> x * y
        | "/" -> x / y
        | "**" -> int_of_float (fst (float x **. float y))
        | _ -> invalid_arg "invalid operator"
      in do_algebra ops (result :: xs)

let eval_expression (operator : string list) (operand : int list) : int = 
  let rec eval = function
  | op :: ops, x :: y :: xs -> 
      let result = 
        match op with
        | "+" -> x + y
        | "-" -> x - y
        | "*" -> x * y
        | "/" -> x / y
        | "**" -> int_of_float (fst (float x **. float y))
        | _ -> invalid_arg "invalid operator"
      in eval (ops, result :: xs)
  | _, _ -> List.hd operand

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:29:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec do_algebra (operator : string list) (operand : int list) : int = 
  match operator, operand with
  | [], _ | _, [] -> invalid_arg "operator and operand lists must have valid lengths"
  | ["+"], _ | ["-"], _ | ["*"], _ | ["/"], _ | ["**"], _ -> List.hd operand
  | op :: ops, x :: y :: xs -> 
      let result = 
        match op with
        | "+" -> x + y
        | "-" -> x - y
        | "*" -> x * y
        | "/" -> x / y
        | "**" -> int_of_float (fst (float x **. float y))
        | _ -> invalid_arg "invalid operator"
      in do_algebra ops (result :: xs)

let eval_expression (operator : string list) (operand : int list) : int = 
  let rec eval ops x y xs = 
    match ops with
    | [] -> x
    | op :: ops' -> 
        let result = 
          match op with
          | "+" -> x + y
          | "-" -> x - y
          | "*" -> x * y
          | "/" -> x / y
          | "**" -> int_of_float (fst (float x **. float y))
          | _ -> invalid_arg "invalid operator"
        in eval ops' result (List.hd xs) (List.tl xs)
  in eval operator (List.hd operand) (List.nth operand 1) (List.tl (List.tl operand))

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:46: Unbound value "( **. )" *)
(*     Hint: Did you mean "**" or "*."? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec do_algebra (operator : string list) (operand : int list) : int = 
  match operator, operand with
  | [], _ | _, [] -> invalid_arg "operator and operand lists must have valid lengths"
  | ["+"], _ | ["-"], _ | ["*"], _ | ["/"], _ | ["**"], _ -> List.hd operand
  | op :: ops, x :: y :: xs -> 
      let result = 
        match op with
        | "+" -> x + y
        | "-" -> x - y
        | "*" -> x * y
        | "/" -> x / y
        | "**" -> int_of_float (x **. y)
        | _ -> invalid_arg "invalid operator"
      in do_algebra ops (result :: xs)

let eval_expression (operator : string list) (operand : int list) : int = 
  let rec eval ops x y xs = 
    match ops with
    | [] -> x
    | op :: ops' -> 
        let result = 
          match op with
          | "+" -> x + y
          | "-" -> x - y
          | "*" -> x * y
          | "/" -> x / y
          | "**" -> int_of_float (x **. y)
          | _ -> invalid_arg "invalid operator"
        in eval ops' result (List.hd xs) (List.tl xs)
  in eval operator (List.hd operand) (List.nth operand 1) (List.tl (List.tl operand))

