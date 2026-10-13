
let rec get_closest_vowel (word : string) : string =
  match word with
  | "" -> ""
  | _ ->
    let rev_word = String.map (fun x -> x) word in
    let vowel_index = ref (-1) in
    for i = 1 to (String.length word - 2) do
      let c = String.get word i in
      if Char.uppercase_ascii c = 'A' || Char.uppercase_ascii c = 'E' ||
          Char.uppercase_ascii c = 'I' || Char.uppercase_ascii c = 'O' ||
          Char.uppercase_ascii c = 'U' then
        vowel_index := i;
        raise Exit;
    done;
    if !vowel_index = -1 then ""
    else String.sub word (!vowel_index + 1) (String.length word - !vowel_index)

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
