
let rec words_in_sentence (sentence : string) : string =
    let rec is_prime num =
        if num = 1 then false 
        else if num = 2 then true 
        else 
            let rec check i = 
                if i * i > num then true 
                else if num mod i = 0 then false 
                else check (i + 1)
            in
            check 2
    in
    match String.split_on_char ' ' sentence with
    | [] -> ""
    | word :: tl ->
        if is_prime (String.length word) then word ^ " " ^ words_in_sentence (String.concat " " tl)
        else words_in_sentence (String.concat " " tl)
;;

print_endline (words_in_sentence "This is a test");;
print_endline (words_in_sentence "lets go for swimming");;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a string representing a sentence, *)
(*     the sentence contains some words separated by a space, *)
(*     and you have to return a string that contains the words from the original sentence, *)
(*     whose lengths are prime numbers, *)
(*     the order of the words in the new string should be the same as the original one. *)
(*     Example 1: *)
(*     >>> words_in_sentence "This is a test" *)
(*     "is" *)
(*     Example 2: *)
(*     >>> words_in_sentence "lets go for swimming" *)
(*     "go for" *)
(*     Constraints: *)
(*     * 1 <= len(sentence) <= 100 *)
(*     * sentence contains only letters *)
