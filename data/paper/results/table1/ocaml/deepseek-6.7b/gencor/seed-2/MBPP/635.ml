
let rec heap_sort (iterable : int list) : int list =
  let rec build_heap = function
    | n, l when n <= 1 -> l
    | n, (x::l) -> build_heap ((n - 1) / 2, List.rev_append l [x])
    | _, _ -> invalid_arg "build_heap"
  in
  let rec sift_down h k =
    let rec loop (l : int list) (n : int) (k : int) =
      match l with
      | [] -> h
      | _ when k > n -> h
      | x::xs when k * 2 <= n && List.nth l (k * 2) > x ->
         loop (List.rev_append xs [x]) n (k * 2)
      | _::xs ->
         loop xs n (k + 1)
    in
    match h with
    | _::_ -> loop h (List.length h - 1) k
    | [] -> invalid_arg "sift_down"
  in
  let rec loop h =
    match h with
    | [] -> []
    | x::xs -> x :: loop (sift_down xs (List.length xs))
  in
  loop (build_heap (List.length iterable, iterable))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
