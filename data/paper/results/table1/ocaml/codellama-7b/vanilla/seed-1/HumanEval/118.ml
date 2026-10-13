let rec get_closest_vowel (word : string) : string =
  let vowels = ["a"; "e"; "i"; "o"; "u"] in
  let sub_string = String.sub word 0 (String.length word - 1) in
  let last_char = String.get word (String.length word - 1) in
  let after_parsing =
    List.find_map
      (fun v ->
         if v = last_char then
           None
         else if String.contains sub_string v then
           Some v
         else
           None)
      vowels
  in
  match after_parsing with
  | Some v -> v
  | None -> ""

let _ =
  let test_cases =
    [
      ("yogurt", "u");
      ("FULL", "U");
      ("quick", "");
      ("ab", "");
      ("apple", "e");
      ("elbows", "o");
      ("Mix", "i");
      ("", "");
    ]
  in
  List.iter
    (fun (word, expected) ->
       let result = get_closest_vowel word in
       if result = expected then
         print_endline ("Pass: " ^ word)
       else
         print_endline ("Fail: " ^ word ^ " Expected: " ^ expected ^ " Got: " ^ result))
    test_cases


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
