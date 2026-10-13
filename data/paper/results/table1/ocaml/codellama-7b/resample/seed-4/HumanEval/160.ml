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
  match operator with
  | [] -> assert false (* there should always be at least one operator *)
  | [operator] ->
    (* handle the case where there is only one operand *)
    begin match operand with
      | [operand] -> operand
      | _ -> assert false (* there should always be exactly one operand *)
    end
  | operator :: operator_tail ->
    match operand with
    | [] -> assert false (* there should always be at least one operand *)
    | operand_head :: operand_tail ->
      let rest = do_algebra operator_tail operand_tail in
      match operator with
      | "+" -> operand_head + rest
      | "-" -> operand_head - rest
      | "*" -> operand_head * rest
      | "//" -> operand_head // rest
      | "**" -> operand_head ** rest
      | _ -> assert false (* invalid operator *)
Do_algebra operator operand

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:22:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec do_algebra (operator : string list) (operand : int list) : int =
  match operator with
  | [] -> assert false (* there should always be at least one operator at this point *)
  | [operator] ->
    begin match operand with
      | [] -> assert false (* there should always be at least one operand at this point *)
      | operand_head :: operand_tail -> operand_head
    end
  | operator_head :: operator_tail ->
    begin match operand with
      | [] -> assert false (* there should always be at least one operand at this point *)
      | operand_head :: operand_tail ->
        let rest = do_algebra operator_tail operand_tail in
        match operator_head with
        | "+" -> operand_head + rest
        | "-" -> operand_head - rest
        | "*" -> operand_head * rest
        | "//" -> operand_head // rest
        | "**" -> operand_head ** rest
        | _ -> assert false (* invalid operator *)
    end
Do_algebra operator operand

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:18:32: Unbound value "(//)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec do_algebra (operator : string list) (operand : int list) : int =
  match operator with
  | [] -> assert false (* there should always be at least one operator at this point *)
  | [operator] ->
    begin match operand with
      | [] -> assert false (* there should always be at least one operand at this point *)
      | operand_head :: operand_tail -> operand_head
    end
  | operator_head :: operator_tail ->
    begin match operand with
      | [] -> assert false (* there should always be at least one operand at this point *)
      | operand_head :: operand_tail ->
        let rest = do_algebra operator_tail operand_tail in
        match operator_head with
        | "+" -> operand_head + rest
        | "-" -> operand_head - rest
        | "*" -> operand_head * rest
        | "/" -> operand_head / rest (* fix: added division *)
        | _ -> assert false (* invalid operator *)
    end
Do_algebra operator operand

