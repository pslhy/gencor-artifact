let rec remove_Occ (s : string) (ch : string) : string = 
  let rec helper remove_first last_first acc s = 
    match s with 
    | "" -> acc 
    | first :: rest -> 
      let rest_str = String.make 1 first ^ rest in 
      if remove_first && first = ch then 
        helper false last_first acc rest_str 
      else if last_first && first = ch then 
        helper remove_first false (acc ^ rest_str) rest_str 
      else 
        helper remove_first last_first (acc ^ rest_str) rest_str 
  in helper true false "" s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
