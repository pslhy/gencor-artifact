let rec amicable_numbers_sum (limit : int) : int =
    let rec proper_divisors_sum (n: int) : int =
        if n = 1 then 0
        else List.fold_left (fun sum d -> if n mod d = 0 then sum + d else sum) 0 (List.init (n/2) (fun x -> x + 1))
    in
    let rec amicable_pair (m : int) : (int * int) option =
        let n = proper_divisors_sum m in
        if m < limit && n < limit && m <> n && proper_divisors_sum n = m then Some (m, n)
        else if m < limit then amicable_pair (m+1)
        else None
    in
    let rec loop (acc : int) (pair : (int * int) option) : int =
        match pair with
        | Some (m, n) -> loop (acc + m + n) (amicable_pair (m + 1))
        | None        -> acc
    in
    loop 0 (amicable_pair 1)

(* Test case *)
let t = amicable_numbers_sum 10000


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
