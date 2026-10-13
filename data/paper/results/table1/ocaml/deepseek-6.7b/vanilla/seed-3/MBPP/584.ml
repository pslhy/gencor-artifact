let rec find_adverbs (text : string) : string =
  let words = String.split_on_char ' ' text in
  let rec loop words pos adverb =
    match words with
    | [] -> adverb
    | hd::tl -> if String.sub hd (String.length hd - 2) 2 = "ly" then
                    if String.length adverb = 0 then loop tl (pos + 1) hd
                    else loop tl (pos + 1) adverb
                 else loop tl (pos + 1) adverb
  in loop words 0 "";;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
