let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  let len_x = String.length x in
  let len_y = String.length y in
  let len_z = String.length z in

  let l c xs =
    try List.assoc c xs
    with Not_found -> -1
  in

  let t = Array.make_matrix (len_x + 1) (len_y * len_z + 1) (-1) in

  for i = 0 to len_x do
    for j = 0 to len_y * len_z do
      let k = j / len_y in
      if i = 0 || j = 0 then
        t.(i).(j) <- 0
      else if x.[i-1] = y.[k] && y.[k] = z.[j - k] then
        t.(i).(j) <- max t.(i-1).(j-1) (t.(i-1).(j) + 1)
      else
        t.(i).(j) <- max t.(i-1).(j) (l y.[k-1] t)
    done
  done;

  let m = ref (-1) in
  for i = 1 to len_x do
    m := max !m t.(i).[i]
  done;
  !m
;;

(* Testing the function *)
let x = "ABCBDAB" in
let y = "BDCAB" in
let z = "BADACB" in
let result = lcs_of_three x y z in
Printf.printf "%d\n" result;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
