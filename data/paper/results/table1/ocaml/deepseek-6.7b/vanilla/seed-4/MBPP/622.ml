let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
  if n = 1 then
    float_of_int (max (List.nth arr1 0) (List.nth arr2 0))
  else if n = 2 then
    float_of_int (max (List.nth arr1 0) (List.nth arr2 0)) /. 2.
  else (
    let median1 = get_median_element arr1 n
    and median2 = get_median_element arr2 n in
    if median1 < median2 then
      get_median (List.filter (fun x -> x > median1) arr1) (List.filter (fun x -> x < median2) arr2) (n/2)
    else
      get_median (List.filter (fun x -> x < median1) arr1) (List.filter (fun x -> x > median2) arr2) (n/2)
  )

and get_median_element arr n =
  if n mod 2 = 0 then
    List.nth arr (n/2)
  else
    List.nth arr ((n-1)/2)

let rec split list acc1 acc2 =
  match list with
  | [] -> acc1, acc2
  | [x] -> x::acc1, acc2
  | x1::x2::xs -> split xs (x1::acc1) (x2::acc2)

let median_of_two_sorted_lists list1 list2 =
  let sorted1, sorted2 = split list1 [] [] in
  get_median sorted1 sorted2 (List.length list1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
