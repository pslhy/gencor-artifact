let rec maximum (arr : int list) (k : int) : int list =
match k, arr with
| 0, _ | _, [] -> []
| _, [x] -> [x]
| _, x::xs ->
let n = List.length xs in
match n - k, xs with
| _, [] -> [x]
| n', y::ys ->
let mx, mx_idx = List.find_max (fun (y', _) -> y' = x) arr in
let mx', _ = List.find_max (fun (y', _) -> y' = y) arr in
if mx > mx' then [x] @ (maximum (List.remove_at mx_idx (List.take n' ys) (@ y :: List.drop (n' - k - 1) ys)) k)
else [y] @ (maximum (List.remove_at mx_idx (List.take n' xs) (@ x :: List.drop (n' - k - 1) xs)) k)

and List.find_max (f : ('a * 'a -> 'a) -> 'a) (l : ('a * 'a) list) : 'a * int =
let rec f' (f : ('a * 'a -> 'a) -> 'a) (acc : 'a * int) (l : ('a * 'a) list) : 'a * int =
match l with
| [] -> acc
| (x, y) :: xs ->
let mx = f (fun (y', _) -> y' = x) in
let mx', mx_idx = acc in
if mx > mx' then f' (fun (y', _) -> y' = x) (x, x_idx) xs
else f' (fun (y', _) -> y' = x) (mx', mx_idx) xs
in
f' f (List.hd l) l
in
List.find_max (fun (y, _) -> y = x) arr;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list arr of integers and a positive integer k, return a sorted list *)
(*     of length k with the maximum k numbers in arr. *)
(*     Example 1: *)
(*     >>> maximum [(-3); (-4); 5] 3 *)
(*     [(-4); (-3); 5] *)
(*     Example 2: *)
(*     >>> maximum [4; (-4); 4] 2 *)
(*     [4; 4] *)
(*     Example 3: *)
(*     >>> maximum [(-3); 2; 1; 2; (-1); (-2); 1] 1 *)
(*     [2] *)
(*     Note: *)
(*     1. The length of the list will be in the range of [1, 1000]. *)
(*     2. The elements in the list will be in the range of [-1000, 1000]. *)
(*     3. 0 <= k <= len(arr) *)
