(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
let rec maxAverageOfPath (cost : int list list) : float =
  let n = List.length cost in
  let total = List.reduce (fun x y -> x + y) cost in
  let rec loop (i : int) (j : int) (total : int) (count : int) : float =
    if i = n - 1 && j = n - 1 then
      float_of_int total /. float_of_int count
    else if i = n - 1 then
      loop (i) (j + 1) (total + List.nth cost j) (count + 1)
    else if j = n - 1 then
      loop (i + 1) (j) (total + List.nth cost i) (count + 1)
    else
      max (loop (i) (j + 1) (total + List.nth cost j) (count + 1))
        (loop (i + 1) (j) (total + List.nth cost i) (count + 1))
  in
  loop 0 0 0 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:15: Unbound value "List.reduce" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec maxAverageOfPath (cost : int list list) : float =
  let n = List.length cost in
  let m = List.length (List.hd cost) in
  let dp = Array.make_matrix n m 0 in

  for i = 0 to n - 1 do
    for j = 0 to m - 1 do
      if i = 0 && j = 0 then
        dp.(i).(j) <- cost.(i).(j)
      else if i = 0 then
        dp.(i).(j) <- cost.(i).(j) + dp.(i).(j - 1)
      else if j = 0 then
        dp.(i).(j) <- cost.(i).(j) + dp.(i - 1).(j)
      else
        dp.(i).(j) <- cost.(i).(j) + max dp.(i - 1).(j) dp.(i).(j - 1)
    done;
  done;

  dp.(n - 1).(m - 1) /. float_of_int (n * m)

