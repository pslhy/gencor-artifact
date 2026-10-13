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
         loop (List.replace_nth l (k * 2 - 1) x) n k
      | x::xs when k * 2 <= n && List.nth l (k * 2) = x &&
                     List.nth l (k * 2 + 1) > x ->
         loop (List.replace_nth l (k * 2 - 1) x) n k
      | x::xs -> loop l n (k + 1)
    in
    match h with
    | [] -> []
    | _ when k <= 0 || k > List.length h ->  h
    | _ -> loop h (List.length h) k
  in
  let rec cut_down_root h =
    match h with
    | [] -> []
    | x::xs -> List.replace_nth h 0 xs
  in
  let heap = build_heap (List.length iterable, iterable) in
  let rec loop h sorted =
    match h with
    | [] -> List.rev sorted
    | _ -> loop (sift_down h 1) (List.hd h :: sorted)
  in
  loop heap [];;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
