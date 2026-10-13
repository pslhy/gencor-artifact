
let rec move_num (test_str : string) : string = 
  let rec helper chars nums = 
    match chars with 
    | [] -> List.rev nums 
    | c :: cs -> if Char.code c >= Char.code '0' && Char.code c <= Char.code '9' then helper cs (c :: nums) else helper cs nums 
  in 
  let num_chars = helper (String.to_seq test_str) [] in 
  let alpha_chars = String.to_seq test_str |> Seq.filter (fun c -> not (Char.code c >= Char.code '0' && Char.code c <= Char.code '9')) in 
  Seq.append alpha_chars (Seq.of_dispenser
  |> Seq.map string_of_int
  |> String.concat "" 
  |> (fun s -> s ^ String.concat "" (List.map string_of_int num_chars))
  int_of_string
);





































































seek_in
string_of_int num_chars

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
