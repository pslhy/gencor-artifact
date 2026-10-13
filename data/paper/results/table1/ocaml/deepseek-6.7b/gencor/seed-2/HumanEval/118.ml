
let rec get_closest_vowel (word : string) : string =
  let len = String.length word in
  if len < 3 then ""
  else
  match word.[len-1], word.[len-2] with
  | _, _ when not (Char.equal word.[len-1] 'a' || Char.equal word.[len-1] 'e' || Char.equal word.[len-1] 'i' || Char.equal word.[len-1] 'o' || Char.equal word.[len-1] 'u' || Char.equal word.[len-1] 'A' || Char.equal word.[len-1] 'E' || Char.equal word.[len-1] 'I' || Char.equal word.[len-1] 'O' || Char.equal word.[len-1] 'U') -> get_closest_vowel (String.sub word 0 (len-2)) ^ word.[len-1] ^ get_closest_vowel (String.sub word 0 (len-3))
  | _ , _ when not (Char.equal word.[len-2] 'a' || Char.equal word.[len-2] 'e' || Char.equal word.[len-2] 'i' || Char.equal word.[len-2] 'o' || Char.equal word.[len-2] 'u' || Char.equal word.[len-2] 'A' || Char.equal word.[len-2] 'E' || Char.equal word.[len-2] 'I' || Char.equal word.[len-2] 'O' || Char.equal word.[len-2] 'U') -> get_closest_vowel (String.sub word 0 (len-1)) ^ word.[len-2] ^ get_closest_vowel (String.sub word 0 (len-3))
  | _ -> get_closest_vowel (String.sub word 0 (len-2)) ;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a word. Your task is to find the closest vowel that stands between *)
(*     two consonants from the right side of the word (case sensitive). *)
(*     Vowels in the beginning and ending doesn't count. Return empty string if you didn't *)
(*     find any vowel met the above condition. *)
(*     You may assume that the given string contains English letter only. *)
(*     Example: *)
(*     >>> get_closest_vowel "yogurt" *)
(*     "u" *)
(*     >>> get_closest_vowel "FULL" *)
(*     "U" *)
(*     >>> get_closest_vowel "quick" *)
(*     "" *)
(*     >>> get_closest_vowel "ab" *)
(*     "" *)
