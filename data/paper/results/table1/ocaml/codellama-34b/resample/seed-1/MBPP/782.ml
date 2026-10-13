(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
let rec odd_length_sum (arr : int list) : int =
    let rec aux (acc : int) (i : int) (n : int) : int =
        if i < n then
            if n mod 2 = 1 then
                aux (acc + arr.(i)) (i + 1) (n - 1)
            else
                aux acc (i + 1) (n - 1)
        else
            acc
    in
    aux 0 0 (List.length arr)

let () =
    let arr : int list = [1; 2; 3; 4; 5; 6] in
    let result : int = odd_length_sum arr in
    Printf.printf "%d\n" result

