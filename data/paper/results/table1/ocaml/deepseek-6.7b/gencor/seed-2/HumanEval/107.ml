
let rec even_odd_palindrome (n : int) :  int * int =
  let rec is_palindrome x  =
    let str = string_of_int x in
    str = String.sub(str, 0, String.length str / 2) ^ String.sub(str, String.length str / 2, String.length str / 2)
  and is_even x = x mod 2 = 0 in
  let rec aux n even_count odd_count  =
    if n <= 0 then (even_count, odd_count)
    else if is_palindrome n && is_even n then aux (n - 1) (even_count + 1) odd_count
    else if is_palindrome n then aux (n - 1) even_count (odd_count + 1)
    else aux (n - 1) even_count odd_count in
  aux n 0 0;;

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
