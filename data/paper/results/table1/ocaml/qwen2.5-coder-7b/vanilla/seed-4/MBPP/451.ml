let rec remove_whitespaces (text1 : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | c :: cs -> if c = ' ' then helper cs acc else helper cs (c :: acc) 
  in helper (List.of_seq (String.to_seq text1)) []
  |> List.map (String.make 1) 
  |> String.concat ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
