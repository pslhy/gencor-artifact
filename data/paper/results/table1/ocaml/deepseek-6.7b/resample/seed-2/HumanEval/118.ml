(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec get_closest_vowel (word : string) : string =
  let len = String.length word in
  if len < 3 then ""
  else
  match word.[len-1], word.[len-2] with
  | _, _ when not (Char.Ascii.is_lowercase word.[len-1] || Char.Ascii.is_uppercase word.[len-1]) -> get_closest_vowel (String.sub word 0 (len-1))
  | _, _ when not (Char.Ascii.is_lowercase word.[len-2] || Char.Ascii.is_uppercase word.[len-2]) -> get_closest_vowel (String.sub word 0 (len-2))
  | _, _ when not (Char.Ascii.is_lowercase word.[0] || Char.Ascii.is_uppercase word.[0]) -> get_closest_vowel (String.sub word 1 len)
  | _, _ when not (Char.Ascii.is_lowercase word.[1] || Char.Ascii.is_uppercase word.[1]) -> get_closest_vowel (String.sub word 2 len) ->
    let vowels = "aeiouAEIOU" in
    if String.contains vowels word.[len-2] && not (String.contains vowels word.[len-1]) 
    then String.make 1 word.[len-2]
    else get_closest_vowel (String.sub word 0 (len-1))  

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:135: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_closest_vowel (word : string) : string =
  let len = String.length word in
  if len < 3 then ""
  else
  match word.[len-1], word.[len-2] with
  | _, _ when not (Char.Ascii.is_lowercase word.[len-1] || Char.Ascii.is_uppercase word.[len-1]) -> get_closest_vowel (String.sub word 0 (len-1))
  | _, _ when not (Char.Ascii.is_lowercase word.[len-2] || Char.Ascii.is_uppercase word.[len-2]) -> get_closest_vowel (String.sub word 0 (len-2))
  | _, _ when not (Char.Ascii.is_lowercase word.[0] || Char.Ascii.is_uppercase word.[0]) -> get_closest_vowel (String.sub word 1 len)
  | _, _ when not (Char.Ascii.is_lowercase word.[1] || Char.Ascii.is_uppercase word.[1]) -> get_closest_vowel (String.sub word 2 len)
  | _, _ ->
    let vowels = "aeiouAEIOU" in
    if String.contains vowels word.[len-2] && not (String.contains vowels word.[len-1]) 
    then String.make 1 word.[len-2]
    else get_closest_vowel (String.sub word 0 (len-1)) 


(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound module "Char.Ascii" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_closest_vowel (word : string) : string =
  let len = String.length word in
  if len < 3 then ""
  else
  match word.[len-1], word.[len-2] with
  | _, _ when not (Char.is_lowercase word.[len-1] || Char.is_uppercase word.[len-1]) -> get_closest_vowel (String.sub word 0 (len-1))
  | _, _ when not (Char.is_lowercase word.[len-2] || Char.is_uppercase word.[len-2]) -> get_closest_vowel (String.sub word 0 (len-2))
  | _, _ when not (Char.is_lowercase word.[0] || Char.is_uppercase word.[0]) -> get_closest_vowel (String.sub word 1 len)
  | _, _ when not (Char.is_lowercase word.[1] || Char.is_uppercase word.[1]) -> get_closest_vowel (String.sub word 2 len)
  | _, _ ->
    let vowels = "aeiouAEIOU" in
    if String.contains vowels word.[len-2] && not (String.contains vowels word.[len-1]) 
    then String.make 1 word.[len-2]
    else get_closest_vowel (String.sub word 0 (len-1)) 


(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_closest_vowel (word : string) : string =
  let len = String.length word in
  if len < 3 then ""
  else
  match word.[len-1], word.[len-2] with
  | _, _ when not (Char.lowercase_ascii word.[len-1] = word.[len-1] || Char.uppercase_ascii word.[len-1] = word.[len-1]) -> get_closest_vowel (String.sub word 0 (len-1))
  | _, _ when not (Char.lowercase_ascii word.[len-2] = word.[len-2] || Char.uppercase_ascii word.[len-2] = word.[len-2]) -> get_closest_vowel (String.sub word 0 (len-2))
  | _, _ when not (Char.lowercase_ascii word.[0] = word.[0] || Char.uppercase_ascii word.[0] = word.[0]) -> get_closest_vowel (String.sub word 1 len)
  | _, _ when not (Char.lowercase_ascii word.[1] = word.[1] || Char.uppercase_ascii word.[1] = word.[1]) -> get_closest_vowel (String.sub word 2 len)
  | _, _ ->
    let vowels = "aeiouAEIOU" in
    if String.contains vowels word.[len-2] && not (String.contains vowels word.[len-1]) 
    then String.make 1 word.[len-2]
    else get_closest_vowel (String.sub word 0 (len-1)) 


