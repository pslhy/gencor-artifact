let rec count_occurance (s : string) : int =
  match s with
  | _ when String.length s < 3 -> 0
  | _ -> count_char_after_substring 's' + count_char_after_substring 't' + count_occurance (String.sub s 1 (String.length s - 1))
and count_char_after_substring (c : char) (s : string) : int =
  match s with
  | _ when String.length s < 1 -> 0
  | _ when c = String.get s 0 -> 1
  | _ -> count_char_after_substring c (String.sub s 1 (String.length s - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
