(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
let rec checks (n : int) : bool =
    let reverse (n : int) : int =
        let rec reverse_helper (n : int) (acc : int) : int =
            if n = 0 then
                acc
            else
                reverse_helper (n / 10) ((n mod 10) + acc)
        in
        reverse_helper n 0
    in
    let rev_n = reverse n in
    n = 2 * rev_n - 1

