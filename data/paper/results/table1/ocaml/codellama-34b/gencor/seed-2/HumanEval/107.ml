
let rec even_odd_palindrome (n : int) :  int * int =
    let is_palindrome (x : int) : bool =
        x = (List.of_seq (Seq.to_dispenser (string_of_int x))) in
    let count (f : 'a -> bool) (xs : 'a list) : int =
        List.fold_left (fun acc x -> if f x then acc + 1 else acc) 0 xs in
    if n = 1 then
        (1, 0)
    else
        let (even, odd) = even_odd_palindrome (n - 1) in
        if is_palindrome n then
            (even + 1, odd + 1)
        else
            (even, odd + 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return a tuple that has the number of even and odd *)
(*     integer palindromes that fall within the range(1, n), inclusive. *)
(*     Example 1: *)
(*     >>> even_odd_palindrome 3 *)
(*     (1, 2) *)
(*     Explanation: *)
(*     Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd. *)
(*     Example 2: *)
(*     >>> even_odd_palindrome 12 *)
(*     (4, 6) *)
(*     Explanation: *)
(*     Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd. *)
(*     Note: *)
(*     1. 1 <= n <= 10^3 *)
(*     2. returned tuple has the number of even and odd integer palindromes respectively. *)
