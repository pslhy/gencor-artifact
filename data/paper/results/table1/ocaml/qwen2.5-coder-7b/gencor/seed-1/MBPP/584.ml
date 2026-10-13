
let rec find_adverbs (text : string) : string = 
  let rec check (substring: string) (pos: int) : (string * int) option =
    if String.length substring < 3 || not (substring.[String.length substring - 2] = 'l' && substring.[String.length substring - 1] = 'y')
    then None
    else Some (substring, pos)
  in
  let rec search (index : int) : (string * int) option =
    if index >= String.length text then None
    else match check (String.sub text index (String.length text - index)) index with
      | Some result -> result
      | None -> search (index + 1)
  in
  search 0

;; find_adverbs "surprisingly, very quickly and easily"  (* returns ("surprisingly", 0) *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
