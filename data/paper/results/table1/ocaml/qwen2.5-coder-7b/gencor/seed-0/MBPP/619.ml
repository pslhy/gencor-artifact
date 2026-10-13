
let rec move_num (test_str : string) : string = 
  let is_num c = Char.code c >= Char.code '0' && Char.code c <= Char.code '9' in
  let rec numbers acc rest = 
    match rest with
    | [] -> List.rev acc
    | c::cs -> if is_num c then numbers (c::acc) cs else numbers acc (c::cs)
  in
  let rec others acc rest = 
    match rest with
    | [] -> List.rev acc
    | c::cs -> if is_num c then others acc cs else others (c::acc) cs
  in
  let num_list = numbers [] (List.of_seq (String.to_seq test_str)) in
  let other_list = others [] (List.of_seq (String.to_seq test_str)) in
  String.concat "" ((List.rev other_list) @ num_list)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
