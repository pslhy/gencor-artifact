let rec correct_bracketing (brackets : string) : bool = 
  let rec count_brackets (stack : int list) (chars : char list) : int list =
    match chars with
    | [] -> stack
    | '<' :: rest -> count_brackets (0 :: stack) rest
    | '>' :: rest ->
        match stack with
        | [] -> []
        | 0 :: rest_stack -> count_brackets rest_stack rest
        | _ :: rest_stack -> 0 :: count_brackets rest_stack rest
  in
  let result_stack = count_brackets [] (List.of_string brackets) in
  List.for_all (fun x -> x = 0) result_stack


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     brackets is a string of "<" and ">". *)
(*     return true if every opening bracket has a corresponding closing bracket. *)
(*     >>> correct_bracketing "<" *)
(*     false *)
(*     >>> correct_bracketing "<>" *)
(*     true *)
(*     >>> correct_bracketing "<<><>>" *)
(*     true *)
(*     >>> correct_bracketing "><<>" *)
(*     false *)
