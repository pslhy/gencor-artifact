(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a non-empty list of integers arr and an integer k, return *)
(*     the sum of the elements with at most two digits from the first k elements of arr. *)
(*     Example: *)
(*     >>> add_elements [111; 21; 3; 4000; 5; 6; 7; 8; 9] 4 *)
(*     24 *)
(*     Constraints: *)
(*     1. 1 <= len(arr) <= 100 *)
(*     2. 1 <= k <= len(arr) *)
let rec add_elements (arr : int list) (k : int) : int =
    if k = 0 then
        0
    else
        let n = List.hd arr in
        if n >= 10 then
            n / 10 + add_elements (List.tl arr) (k - 1)
        else
            n + add_elements (List.tl arr) (k - 1)

let arr = [111; 21; 3; 4000; 5; 6; 7; 8; 9]
let k = 4
let result = add_elements arr k
printfn "%d" result

