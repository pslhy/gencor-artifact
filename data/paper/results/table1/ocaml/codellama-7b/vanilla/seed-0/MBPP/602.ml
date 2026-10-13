let rec first_repeated_char (str1 : string) : string option =
  if String.length str1 = 0 then None
  else
    let rec aux i =
      if i >= String.length str1 then None
      else
        if str1.[i] = ' ' || str1.[i] = '\n' || str1.[i] = '\t' then None
        else
          if String.contains ~pos:i (String.sub ~pos:(i+1) ~len:(String.length str1 - i - 1) str1) str1.[i]
          then Some str1.[i]
          else aux (i+1)
    in
    aux 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
