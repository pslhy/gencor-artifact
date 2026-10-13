let rec vowels_count (s : string) : int =
  if s = ""
  then 0
  else (
    if s.[0] = 'a' || s.[0] = 'e' || s.[0] = 'i' || s.[0] = 'o' || s.[0] = 'u'
    then 1 + vowels_count (String.sub s 1 (String.length s - 1))
    else vowels_count (String.sub s 1 (String.length s - 1))
  )
;;

let () = Printf.printf "%d\n" (vowels_count "abcde")
let () = Printf.printf "%d\n" (vowels_count "ACEDY")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function vowels_count which takes a string representing *)
(*     a word as input and returns the number of vowels in the string. *)
(*     Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a *)
(*     vowel, but only when it is at the end of the given word. *)
(*     Example: *)
(*     >>> vowels_count "abcde" *)
(*     2 *)
(*     >>> vowels_count "ACEDY" *)
(*     3 *)
