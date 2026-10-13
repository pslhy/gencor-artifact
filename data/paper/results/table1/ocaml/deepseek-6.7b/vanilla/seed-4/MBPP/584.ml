let rec find_adverbs (text : string) : string =
  let rec aux xs n =
    match xs with
    | [] -> "", -1
    | h::t when (String.length h > 6 && String.sub h (String.length h - 5) 3 = "ly")-> h, n
    | h::t -> aux t (n + 1)
  in
  let words = String.split_on_char ' ' text in
  let adverb, position = aux words 0 in
  match position with
  | -1 -> "No adverb ending with ly found"
  | _ -> "Adverb: " ^ adverb ^ ", Position: " ^ string_of_int position

let s = "I really really enjoy this lovingly"

let () =
  print_endline (find_adverbs s)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
