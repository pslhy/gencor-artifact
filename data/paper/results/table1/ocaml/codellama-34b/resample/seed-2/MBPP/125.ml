(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
let rec find_length (string : string) : int =
    match string with
    | [] -> 0
    | (x::xs) ->
        let (zeros, ones) = (find_length xs) in
        if x = '0' then (zeros + 1, ones)
        else (zeros, ones + 1)

let find_max_diff (string : string) : int =
    let (zeros, ones) = (find_length string) in
    let max_diff = if zeros > ones then zeros - ones else ones - zeros in
    max_diff

