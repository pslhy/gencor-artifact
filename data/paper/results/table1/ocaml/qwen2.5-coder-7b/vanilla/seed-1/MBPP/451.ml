let rec remove_whitespaces (text1 : string) : string = 
  let rec check (text: string) (i: int) : string = 
    if i >= String.length text then 
      ""
    else if text.[i] = ' ' then 
      check text (i + 1)
    else 
      text.[i] :: check text (i + 1)
  in
  List.rev (check text1 0) |> String.of_seq


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
