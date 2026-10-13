
let rec even_odd_palindrome (n : int) :  int * int =
  let rec is_palindrome (x : int) : bool =
    let s = string_of_int x in
    s = String.concat "" (List.rev (List.map String.make 1 (String.to_seq s)))
  in
  let rec iter (n : int) (e : int) (o : int) : int * int =
    if n = 0 then (e, o)
    else if is_palindrome n then
      if (n mod 10) mod 2 = 0 then iter (n - 1) (e + 1) o
      else iter (n - 1) e (o + 1)
    else iter (n - 1) e o
  in
  iter n 0 0

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
