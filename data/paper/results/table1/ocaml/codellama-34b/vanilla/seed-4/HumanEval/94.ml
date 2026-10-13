let rec skjkasdkd (lst : int list) : int =
    let largest_prime = lst
        |> List.map (fun x -> (x, prime_factors x))
        |> List.filter (fun (_, factors) -> List.length factors = 1)
        |> List.sort ~cmp:(fun (_, factors1) (_, factors2) -> Int.compare (List.length factors1) (List.length factors2))
        |> List.hd
        |> fst
    in
    largest_prime

let prime_factors n : int list =
    let rec prime_factors_helper n factors =
        if n <= 1 then
            factors
        else
            let prime = find_prime_factor n
            in
            prime_factors_helper (n / prime) (prime :: factors)
    in
    prime_factors_helper n []

let find_prime_factor n =
    let rec find_prime_factor_helper i =
        if i * i > n then
            n
        else if n mod i = 0 then
            i
        else
            find_prime_factor_helper (i + 1)
    in
    find_prime_factor_helper 2

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a list of integers. *)
(*     You need to find the largest prime value and return the sum of its digits. *)
(*     Examples: *)
(*     >>> skjkasdkd [0; 3; 2; 1; 3; 5; 7; 4; 5; 5; 5; 2; 181; 32; 4; 32; 3; 2; 32; 324; 4; 3] *)
(*     10 *)
(*     >>> skjkasdkd [1; 0; 1; 8; 2; 4597; 2; 1; 3; 40; 1; 2; 1; 2; 4; 2; 5; 1] *)
(*     25 *)
(*     >>> skjkasdkd [1; 3; 1; 32; 5107; 34; 83278; 109; 163; 23; 2323; 32; 30; 1; 9; 3] *)
(*     13 *)
(*     >>> skjkasdkd [0; 724; 32; 71; 99; 32; 6; 0; 5; 91; 83; 0; 5; 6] *)
(*     11 *)
(*     >>> skjkasdkd [0; 81; 12; 3; 1; 21] *)
(*     3 *)
(*     >>> skjkasdkd [0; 8; 1; 2; 1; 7] *)
(*     7 *)
