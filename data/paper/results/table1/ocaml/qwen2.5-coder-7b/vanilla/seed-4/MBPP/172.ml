let rec count_occurance (s : string) : int = 
  let rec helper (s : string) (count : int) : int = 
    if String.length s < 3 then count 
    else if String.sub s 0 3 = "std" then helper (String.sub s 3 (String.length s - 3)) (count + 1)
    else helper (String.sub s 1 (String.length s - 1)) count 
  in 
  helper s 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
