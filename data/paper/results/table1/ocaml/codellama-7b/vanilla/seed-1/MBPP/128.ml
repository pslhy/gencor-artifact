let rec long_words (n : int) (str : string) : string list =
match str with
| [] -> []
| h::t -> if String.length h > n then h :: long_words n t else long_words n t

let all_long_words (n : int) (str_list : string list) : string list =
List.map (fun str -> List.filter (fun word -> String.length word > n) str) str_list

let test_long_words () =
let words = ["Hello"; "World"; "OCaml"; "Programming"; "is"; "Fun"] in
long_words 6 words = ["OCaml"; "Programming"; "Fun"] ;
all_long_words 6 words = [["OCaml"; "Programming"; "Fun"]; ["Hello"; "World"]; []] ;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
