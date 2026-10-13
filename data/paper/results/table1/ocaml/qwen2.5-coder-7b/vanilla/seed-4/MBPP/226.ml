let rec odd_values_string (str : string) : string = 
  let rec helper index acc = 
    if index >= String.length str then 
      String.of_seq (List.rev acc) 
    else 
      if index mod 2 = 0 then 
        helper (index + 1) ((str.[index] :: acc)) 
      else 
        helper (index + 1) acc 
  in 
  helper 0 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
