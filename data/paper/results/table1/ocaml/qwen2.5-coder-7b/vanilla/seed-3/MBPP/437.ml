let rec remove_odd (str1 : string) : string = 
  let rec helper (str2 : string) (acc : string) : string = 
    if str2 = "" then 
      acc 
    else 
      let new_acc = 
        if Char.code (String.get str2 0) land 1 = 0 then 
          acc ^ (String.make 1 (String.get str2 0)) 
        else 
          acc 
      in 
      helper (String.sub str2 1 (String.length str2 - 1)) new_acc 
  in 
  helper str1 ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
