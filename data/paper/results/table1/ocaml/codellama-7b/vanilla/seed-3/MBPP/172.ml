let rec count_occurance (s : string) : int =
  if s = ""
  then 0
  else if String.sub s 0 3 = "std"
  then 1 + count_occurance (String.sub s 1 (String.length s - 3))
  else count_occurance (String.sub s 1 (String.length s - 3))

let () =
  if count_occurance "std" = 1 then ()
  else print_endline "Wrong result"

;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
