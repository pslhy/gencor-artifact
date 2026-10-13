
let rec mul_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> 1
  | head1 :: tail1 ->
    let rec mul_even_odd_helper (even_head, odd_head) = function
      | [] -> (even_head, odd_head)
      | head2 :: tail2 ->
        if even_head * head2 * odd_head < 0 then
          mul_even_odd_helper ((even_head * head2) mod 10) (odd_head * head2) tail2
        else
          mul_even_odd_helper (even_head * head2) (odd_head * head2) tail2
    in
    let (even_product, odd_product) =
      mul_even_odd_helper (1, 1) list1
    in
    even_product * odd_product

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
