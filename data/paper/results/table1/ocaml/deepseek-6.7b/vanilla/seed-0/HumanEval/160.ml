let rec do_algebra (operator : string list) (operand : int list) : int =
    match operator, operand with
    | [], [n] -> n
    | _ , [] -> failwith "Inconsistent input"
    | _ ->  
         let (o, ops) = List.hd (List.rev operator), List.tl (List.rev operand) in
         let (n1, n2 :: rest) = List.rev operand in
         match o with
         | "+" -> n1 + n2
         | "-" ->  n1 - n2
         | "*" -> n1 * n2
         | "/" -> if n2 <> 0 then n1 / n2 else raise Division_by_zero
         | "**" -> n1 ** n2
         | _ -> failwith "Invalid operator"


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
