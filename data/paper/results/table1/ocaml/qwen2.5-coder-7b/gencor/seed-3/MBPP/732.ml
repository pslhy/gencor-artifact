
let rec replace_specialchar (text : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> ':' :: helper rest
    | ',' :: rest -> ':' :: helper rest
    | '.' :: rest -> ':' :: helper rest
    | char :: rest -> char :: helper rest
  in
  List.rev (helper (String.to_seq text |> Seq.to_dispenser
        String.to_seq text |> Seq.to_dispenser) incr

































seek_out
classify_float classify_float classify_float
Array.of_list([1; 2; 3; 4; 5])
) = [1; 2; 3; 4; 5]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all occurrences of spaces, commas, or dots with a colon. *)
