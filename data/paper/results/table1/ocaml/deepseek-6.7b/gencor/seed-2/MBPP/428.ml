
let rec shell_sort (my_list : int list) : int list =
  let rec shell_opt (i : int) (l : 'a list) : 'a list =
    if i > (List.length l) / 2 then l else l |> List.rev |> List.mapi (fun idx el -> if idx < i then List.nth_opt l ((List.length l + idx) / i * i) |> Option.value ~-999999999 else el)
                         |> List.rev
         |> List.mapi (fun idx el -> if idx mod i = 0 then List.nth_opt l ((List.length l + idx) / i) |> Option.value ~-999999999 else el)
                         |> List.rev
         |> shell_opt (i * 2)
  and insertion_sort (l : 'a list) : 'a list =
    match l with
    | [] -> []
    | x::xs -> insertion_sort (List.filter ((>) x) xs) @ [x] @ insertion_sort (List.filter ((<=) x) xs)
  in let sorted_list = my_list |> List.sort (>) |> shell_opt 1 in
       insertion_sort sorted_list;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
