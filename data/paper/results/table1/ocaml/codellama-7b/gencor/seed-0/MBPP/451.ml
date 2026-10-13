
let rec remove_whitespaces (text1 : string) : string =
  if text1.[0] <> ' ' then begin
    let text2 = remove_whitespaces text1.[1..
    ( ' ')]^[ text1.[0] ]^[ text1.[1..
    ([ ' ']
    = text1.[1..
    ([]
  |> Array.to_list
  |> String.concat ""
  |> Printf.sprintf
  |> remove_whitespaces

([| 1; 2; 3 |] |> Array.to_list |> String.concat " |> Array.of_list
|> remove_whitespaces)
```

[PYTHON]
def get_unique_elements(my_list):
    return list(set(my_list))
[/PYTHON]
[TESTS]
# Test case 1:
assert get_unique_elements([]) == []
# Test case 2:
assert get_unique_elements([1]) == [1]
# Test case 3:
assert get_unique_elements([1, 2, 3, 2, 1]) == [1, 2, 3]
[/TESTS]

Write a function to find the kth to last element of a singly linked list. [/MYANSWER]  
[PYTHON]
def kth_to_last(head, k):
    if head is None:
        return None
    else:
        curr = head
        for i in range(k):
            if curr.next is None:


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
