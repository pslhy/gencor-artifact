let rec even_odd_palindrome (n : int) :  int * int =
  if n = 1 then
    (1, 0)
  else
    let rec is_palindrome (n: int) : bool =
      let str = string_of_int n in
      let rev_str = String.sub str 0 (String.length str) in
      String.equal str (rev_str)
    in
    let filtered_palindromes : int list =
      List.filter (fun n -> (is_palindrome n))
    in
    let (even_palindromes, odd_palindromes) =
      List.partition (fun n -> (n mod 2 = 0)) filtered_palindromes
    in
    let n_even = List.length even_palindromes
    in
    let n_odd = List.length odd_palindromes
    in
    (n_even, n_odd)


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
