(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:16: Unbound value "List.replace_nth" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_sort (iterable : int list) : int list =
  let rec build_heap (n, l) =
    if n <= 1 then
      l
    else
      build_heap ((n - 1) / 2, List.rev_append l [List.nth l (n - 1)])
  in
  let rec sift_down h k =
    let n = List.length h in
    let rec loop (l : int list) (k : int) =
      if k > n || k <= 0 then
        l
      elif k * 2 <= n && List.nth l (k * 2 - 1) > List.nth l (k - 1) then
        let temp = List.nth l (k - 1) in
        let l = List.assoc l (k - 1, List.nth l (k * 2 - 1)) in
        let l = List.assoc l ((k * 2) - 1, List.nth l (k - 1)) in
        loop l k
      elif k * 2 <= n && List.nth l (k * 2 - 1) = List.nth l (k - 1) &&
             List.nth l (k * 2) > List.nth l (k - 1) then
        let l = List.assoc l ((k * 2) - 1, List.nth l (k * 2)) in
        let l = List.assoc l (k - 1, List.nth l ((k * 2) - 1)) in
        loop l (k + 1)
      else
        loop l (k + 1)
    in
    loop h k
  in
  let cut_down_root h =
    match h with
    | [] -> []
    | _ -> List.tl h
  in
  let rec loop h sorted =
    if List.length h = 0 then
      List.rev sorted
    else
      loop (sift_down h 1) (List.hd h :: sorted)
  in
  loop (build_heap (List.length iterable, iterable)) [];;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:70: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_sort (iterable : int list) : int list =
  let rec build_heap (n, l) =
    if n <= 1 then l else build_heap ((n - 1) / 2, List.rev_append l [List.nth l (n - 1)])
  in
  let rec sift_down h k =
    let n = List.length h in
    let rec loop (l : int list) (k : int) =
      if k > n || k <= 0 then l
      elif k * 2 <= n && List.nth l (k * 2 - 1) > List.nth l (k - 1) then
        let temp = List.nth l (k - 1) in
        let l = List.nth l (k * 2 - 1) in
        loop (List.nth l (k * 2 - 1) :: List.nth l (k - 1) :: (List.nth l (k + 1) :: l)) (k + 1)
      elif k * 2 <= n && List.nth l (k * 2 - 1) = List.nth l (k - 1) &&
             List.nth l (k * 2) > List.nth l (k - 1) then
        let temp = List.nth l (k - 1) in
        let l = List.nth l (k * 2) in
        loop (List.nth l (k * 2) :: List.nth l (k - 1) :: (List.nth l (k + 1) :: l)) (k + 1)
      else
        loop l (k + 1)
    in
    loop h k
  in
  let cut_down_root h =
    match h with
    | [] -> []
    | _ -> List.tl h
  in
  let rec loop h sorted =
    if List.length h = 0 then List.rev sorted
    else loop (sift_down h 1) (List.hd h :: sorted)
  in
  loop (build_heap (List.length iterable, iterable)) [];;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:70: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_sort (iterable : int list) : int list =
  let rec build_heap (n, l) =
    match n with
    | 0 -> l
    | _ -> build_heap ((n - 1) / 2, List.rev_append l [List.nth l (n - 1)])
  in
  let rec sift_down h k =
    let n = List.length h in
    let rec loop (l : int list) (k : int) =
      if k > n || k <= 0 then l
      elif k * 2 <= n && List.nth l (k * 2 - 1) > List.nth l (k - 1) then
        let temp = List.nth l (k - 1) in
        let l = List.nth l (k * 2 - 1) in
        loop (List.nth l (k * 2 - 1) :: List.nth l (k - 1) :: List.tl (List.tl l)) (k + 1)
      elif k * 2 <= n && List.nth l (k * 2 - 1) = List.nth l (k - 1) &&
             List.nth l (k * 2) > List.nth l (k - 1) then
        let temp = List.nth l (k - 1) in
        let l = List.nth l (k * 2) in
        loop (List.nth l (k * 2) :: List.nth l (k - 1) :: List.tl (List.tl l)) (k + 1)
      else
        loop l (k + 1)
    in
    loop h k
  in
  let cut_down_root h =
    match h with
    | [] -> []
    | _ -> List.tl h
  in
  let rec loop h sorted =
    if List.length h = 0 then List.rev sorted
    else loop (sift_down h 1) (List.hd h :: sorted)
  in
  loop (build_heap (List.length iterable, iterable)) [];;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:70: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_sort (iterable : int list) : int list =
  let rec build_heap (n, l) =
    match n with
    | 0 -> l
    | _ -> build_heap ((n - 1) / 2, List.rev_append l [List.nth l (n - 1)])
  in
  let rec sift_down h k =
    let n = List.length h in
    let rec loop (l : int list) (k : int) =
      if k > n || k <= 0 then l
      elif k * 2 <= n && List.nth l (k * 2 - 1) > List.nth l (k - 1) then
        let temp = List.nth l (k - 1) in
        let l = List.nth l (k * 2 - 1) in
        loop (l @ [List.nth l k] @ List.tl(List.tl l)) (k + 1)
      elif k * 2 <= n && List.nth l (k * 2 - 1) = List.nth l (k - 1) &&
             List.nth l (k * 2) > List.nth l (k - 1) then
        let temp = List.nth l (k - 1) in
        let l = List.nth l (k * 2) in
        loop (l @ [List.nth l k] @ List.tl(List.tl l)) (k + 1)
      else
        loop l (k + 1)
    in
    loop h k
  in
  let cut_down_root h =
    match h with
    | [] -> []
    | _ -> List.tl h
  in
  let rec loop h sorted =
    if List.length h = 0 then List.rev sorted
    else loop (sift_down h 1) (List.hd h :: sorted)
  in
  loop (build_heap (List.length iterable, iterable)) [];;

