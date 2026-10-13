let rec remove_odd (str1 : string) : string = 
  let rec helper (s: string) (idx:int) acc=
    if (idx >= String.length s) then
      acc
    else
      if (idx mod 2 = 0) then
        helper s (idx + 1) (acc ^ (String.sub s idx 1))
      else
        helper s (idx + 1) acc
  in helper str1 0 ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
