let rec even_Power_Sum (n : int) : int =
    match n with
    | 0 -> 0
    | n when n > 0 -> (2 * n - 1) * (2 * n - 1) * (2 * n - 1) * (2 * n - 1) + pow_sum (n - 1)
    | _ -> 0

let test_even_Power_Sum () =
    assert (even_Power_Sum 0 = 0);
    assert (even_Power_Sum 1 = 0);
    assert (even_Power_Sum 2 = 0);
    assert (even_Power_Sum 3 = 0);
    assert (even_Power_Sum 4 = 32);
    assert (even_Power_Sum 5 = 100);
    assert (even_Power_Sum 6 = 256);
    assert (even_Power_Sum 7 = 512);
    assert (even_Power_Sum 8 = 1024);
    assert (even_Power_Sum 9 = 2048);

let () = test_even_Power_Sum ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and finds the sum of the first n even natural numbers that are raised to the fifth power. *)
