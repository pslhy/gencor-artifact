let rec word_len (s : string) : bool =
    let acc = 0 in
    let rec loop (s : string) (acc : int) : int =
        match s with
        | [] -> acc
        | c :: t -> if c = ' ' then acc else loop t (acc + 1)
    in
    loop s 0

let is_odd (n : int) : bool = n mod 2 = 1

let check_word_len (s : string) : bool = is_odd (word_len s)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the length of the word is odd or not. *)
